"""
    ieeefloat(T)

Obtain the IEEEFloat type with the same number of bits as T.
""" ieeefloat

ieeefloat(::Type{Float128}) = Float128
ieeefloat(::Type{Float64}) = Float64
ieeefloat(::Type{Float32}) = Float32
ieeefloat(::Type{Float16}) = Float16
ieeefloat(::Type{Float8}) = Float8

ieeefloat(::Type{UInt128}) = Float128
ieeefloat(::Type{UInt64}) = Float64
ieeefloat(::Type{UInt32}) = Float32
ieeefloat(::Type{UInt16}) = Float16
ieeefloat(::Type{UInt8}) = Float8

ieeefloat(::Type{Int128}) = Float128
ieeefloat(::Type{Int64}) = Float64
ieeefloat(::Type{Int32}) = Float32
ieeefloat(::Type{Int16}) = Float16
ieeefloat(::Type{Int8}) = Float8

"""
    unsigned(T)
    unsigned(x::T)

Obtain the unsigned type or unsigned value that corresponds.
""" unsigned

"""
    signed(T)
    signed(x::T)

Obtain the signed type or signed value that corresponds.
""" signed


Base.unsigned(::Type{Float128}) = UInt128
Base.unsigned(::Type{Float64}) = UInt64
Base.unsigned(::Type{Float32}) = UInt32
Base.unsigned(::Type{Float16}) = UInt16
Base.unsigned(::Type{Float8}) = UInt8

Base.unsigned(x::Float128) = reinterpret(UInt128, x)
Base.unsigned(x::Float64) = reinterpret(UInt64, x)
Base.unsigned(x::Float32) = reinterpret(UInt32, x)
Base.unsigned(x::Float16) = reinterpret(UInt16, x)
Base.unsigned(x::Float8) = reinterpret(UInt8, x)

Base.signed(::Type{Float128}) = Int128
Base.signed(::Type{Float64}) = Int64
Base.signed(::Type{Float32}) = Int32
Base.signed(::Type{Float16}) = Int16
Base.signed(::Type{Float8}) = Int8

Base.signed(x::Float128) = reinterpret(Int128, x)
Base.signed(x::Float64) = reinterpret(Int64, x)
Base.signed(x::Float32) = reinterpret(Int32, x)
Base.signed(x::Float16) = reinterpret(Int16, x)
Base.signed(x::Float8) = reinterpret(Int8, x)

