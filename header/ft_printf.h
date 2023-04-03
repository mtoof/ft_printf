/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mtoof <mtoof@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/06 14:48:15 by mtoof             #+#    #+#             */
/*   Updated: 2022/12/18 14:33:40 by mtoof            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>

int		ft_putstr(char *s);
int		ft_putchar(char c);
int		ft_putnbr(unsigned int nb, int base, int sign);
int		ft_printf(const char *tmp, ...);
int		ft_convert(unsigned long num, int base, char sign);

#endif