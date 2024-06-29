function normal(shader, t_base, t_second, t_detail)
	shader:begin("models_scope_reticle", "models_scope_reticle")
	: fog(false)
	: zb(true, false)
	: blend(true, blend.srcalpha, blend.invsrcalpha)
	: aref(true, 0)
	: sorting(2, true)
	: distort(true)
	: scope3(true)
	shader:dx10texture("s_base", t_base)
	shader:dx10texture("s_prev_frame", "$user$generic_temp")
	shader:dx10texture("s_tonemap", "$user$tonemap")
	shader:dx10sampler("smp_rtlinear")
end