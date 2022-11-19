module ExampleHidden exposing (..)
import Expect
import Test exposing (..)

suite : Test
suite =
    describe "The String module"
        [ describe "String.reverse"
            [ test "has no effect on a palindrome" <|
                \_ ->
                    let
                        palindrome =
                            "redivider"
                    in
                        Expect.equal palindrome (String.reverse palindrome)

            -- Expect.equal is designed to be used in pipeline style, like this.
            , test "reverses a known string" <|
                \_ ->
                    "GHBJKQP"
                        |> String.reverse
                        |> Expect.equal "PQKJBHG"
            ]
        ]
