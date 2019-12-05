defmodule Advent19.Day05Test do
  use ExUnit.Case

  import Advent19.Day05

  test "part1" do
    assert [2, 0, 0, 0, 99] == part1([1, 0, 0, 0, 99]) |> result()
    assert [2, 3, 0, 6, 99] == part1([2, 3, 0, 3, 99]) |> result()
    assert [2, 4, 4, 5, 99, 9801] == part1([2, 4, 4, 5, 99, 0]) |> result()
    assert [30, 1, 1, 4, 2, 5, 6, 0, 99] == part1([1, 1, 1, 4, 99, 5, 6, 0, 99]) |> result()

    assert [3500, 9, 10, 70, 2, 3, 11, 0, 99, 30, 40, 50] ==
             part1("1,9,10,3,2,3,11,0,99,30,40,50") |> result()

    assert [3, 2, 30] == part1("3,2", 30) |> result()
    assert "55" == part1("3,0,4,0,99", 55) |> output
    assert "50" == part1("4,2,50") |> output

    assert [1101, 100, -1, 4, 99] == part1([1101, 100, -1, 4, 0]) |> result
    assert [1002, 4, 3, 4, 99] = part1("1002,4,3,4,33") |> result
  end

  test "part2" do
    #     3,9,8,9,10,9,4,9,99,-1,8 - Using position mode, consider whether the input is equal to 8; output 1 (if it is) or 0 (if it is not).
    # 3,9,7,9,10,9,4,9,99,-1,8 - Using position mode, consider whether the input is less than 8; output 1 (if it is) or 0 (if it is not).
    # 3,3,1108,-1,8,3,4,3,99 - Using immediate mode, consider whether the input is equal to 8; output 1 (if it is) or 0 (if it is not).
    # 3,3,1107,-1,8,3,4,3,99 - Using immediate mode, consider whether the input is less than 8; output 1 (if it is) or 0 (if it is not).

    assert "0" == part1([3, 9, 8, 9, 10, 9, 4, 9, 99, -1, 8], 9) |> output
    assert "1" == part1([3, 9, 8, 9, 10, 9, 4, 9, 99, -1, 8], 8) |> output

    assert "0" == part1([3, 9, 7, 9, 10, 9, 4, 9, 99, -1, 8], 9) |> output
    assert "1" == part1([3, 9, 7, 9, 10, 9, 4, 9, 99, -1, 8], 7) |> output

    assert "0" == part1([3, 3, 1108, -1, 8, 3, 4, 3, 99], 10) |> output
    assert "1" == part1([3, 3, 1108, -1, 8, 3, 4, 3, 99], 8) |> output

    assert "0" == part1([3, 3, 1107, -1, 8, 3, 4, 3, 99], 9) |> output
    assert "1" == part1([3, 3, 1107, -1, 8, 3, 4, 3, 99], 7) |> output

    assert "0" == part1([3, 12, 6, 12, 15, 1, 13, 14, 13, 4, 13, 99, -1, 0, 1, 9], 0) |> output
    assert "1" == part1([3, 12, 6, 12, 15, 1, 13, 14, 13, 4, 13, 99, -1, 0, 1, 9], 100) |> output

    assert "999" ==
             part1(
               [
                 3,
                 21,
                 1008,
                 21,
                 8,
                 20,
                 1005,
                 20,
                 22,
                 107,
                 8,
                 21,
                 20,
                 1006,
                 20,
                 31,
                 1106,
                 0,
                 36,
                 98,
                 0,
                 0,
                 1002,
                 21,
                 125,
                 20,
                 4,
                 20,
                 1105,
                 1,
                 46,
                 104,
                 999,
                 1105,
                 1,
                 46,
                 1101,
                 1000,
                 1,
                 20,
                 4,
                 20,
                 1105,
                 1,
                 46,
                 98,
                 99
               ],
               7
             )
             |> output

    assert "1001" ==
             part1(
               [
                 3,
                 21,
                 1008,
                 21,
                 8,
                 20,
                 1005,
                 20,
                 22,
                 107,
                 8,
                 21,
                 20,
                 1006,
                 20,
                 31,
                 1106,
                 0,
                 36,
                 98,
                 0,
                 0,
                 1002,
                 21,
                 125,
                 20,
                 4,
                 20,
                 1105,
                 1,
                 46,
                 104,
                 999,
                 1105,
                 1,
                 46,
                 1101,
                 1000,
                 1,
                 20,
                 4,
                 20,
                 1105,
                 1,
                 46,
                 98,
                 99
               ],
               90
             )
             |> output
  end
end
