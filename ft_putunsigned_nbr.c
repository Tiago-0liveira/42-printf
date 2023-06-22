/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putunsigned_nbr.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tiagoliv <tiagoliv@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/25 13:40:07 by tiagoliv          #+#    #+#             */
/*   Updated: 2023/05/25 13:58:34 by tiagoliv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_putunsigned_nbr(unsigned int n)
{
	if (n >= 10)
		ft_putunsigned_nbr(n / 10);
	ft_putchar_fd((n % 10) + '0', STDOUT_FILENO);
}
