using Assignment01
using Test

@testset "Question 1" begin
    @test typeof(question1) <: AbstractString
    @test isdefined(Assignment01, :my_name)
    @test isdefined(Assignment01, :my_age)
    @test lowercase(Assignment01.my_name) != "kevin"
    @test Assignment01.my_age < 30
    include("../src/run.jl")
    @test my_name == Assignment01.my_name
    @test my_age == Assignment01.my_age
    @test isnothing(main())
    @test lowercase(question1) == "yes"
end

@testset "Question 2" begin
    @test typeof(question2) <: String
    cd("..")
    dircontents = split(read(Cmd(question2), String), '\n')
    @test ".git" in dircontents
    @test length(dircontents) > 8
end

@testset "Question 3" begin
    @test typeof(question3) <: AbstractString
end

@testset "Question 4" begin
    @test typeof(question4) <: AbstractString
end

@testset "Question 5" begin
    @test typeof(question5) <: AbstractString
end
