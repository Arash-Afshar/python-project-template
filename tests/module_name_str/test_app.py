from tests.context import module_name_str


def test_app(capsys, example_fixture):
    # pylint: disable=W0612,W0613
    module_name_str.Main.run()
    captured = capsys.readouterr()

    assert "Hello World..." in captured.out
