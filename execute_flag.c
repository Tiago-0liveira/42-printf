/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   execute_flag.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tiagoliv <tiagoliv@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/18 23:49:35 by tiagoliv          #+#    #+#             */
/*   Updated: 2023/05/25 13:45:28 by tiagoliv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	execute_flag(char s, va_list args)
{
	/*int				i;
	char			*l;
	unsigned int	n;*/

	if (s == 'c')
		ft_putchar_fd(va_arg(args, int), STDOUT_FILENO);
	else if (s == 's')
		ft_putstr_fd(va_arg(args, char *), STDOUT_FILENO);
	else if (s == 'p')
		ft_putnbr_fd(va_arg(args, int), STDOUT_FILENO);
	else if (s == 'd' || s == 'i')
		ft_putnbr_fd(va_arg(args, int), STDOUT_FILENO);
	else if (s == 'u')
		ft_putnbr_fd(va_arg(args, unsigned int), STDOUT_FILENO);
	else if (s == 'x')
		ft_putnbr_fd(va_arg(args, unsigned int), STDOUT_FILENO);
	else if (s == 'X')
		ft_putnbr_fd(va_arg(args, unsigned int), STDOUT_FILENO);
	else if (s == '%')
		ft_putchar_fd('%', STDOUT_FILENO);
	else
		ft_putchar_fd(s, STDOUT_FILENO);
	return (1);
}
