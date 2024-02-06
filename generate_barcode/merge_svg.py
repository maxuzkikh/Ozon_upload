from svgutils.compose import SVG
from svgutils.transform import SVGFigure
import sys


def merge_svg(svg1_path, svg2_path, output_path):
    # Load SVG files
    svg1 = SVG(svg1_path)
    svg2 = SVG(svg2_path)

    # Create a new SVGFigure object
    fig = SVGFigure()

    # Append SVG components to the new SVGFigure
    fig.append(svg1)
    fig.append(svg2)

    # Save the merged SVG to a new file
    fig.save(output_path)


if __name__ == "__main__":
    input_svg1 = r'C:\Users\Max\Documents\GitHub\Ozon_upload\generate_barcode\file1.svg'
    input_svg2 = r'C:\Users\Max\Documents\GitHub\Ozon_upload\generate_barcode\file2.svg'
    output_svg = r'C:\Users\Max\Documents\GitHub\Ozon_upload\generate_barcode\output.svg'

    merge_svg(input_svg1, input_svg2, output_svg)
