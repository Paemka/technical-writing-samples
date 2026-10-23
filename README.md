# Technical writing samples

Judah Paemka | Technical writer | Victoria, BC, Canada

This repository holds samples of my documentation and technical writing. Two are docs-as-code pages written to the conventions in the [Grafana Writers' Toolkit](https://grafana.com/docs/writers-toolkit/). Two are research and development narratives written for expert government reviewers.

## Samples

| Sample | Type | Audience |
| --- | --- | --- |
| [Collect and label JSON application logs with Grafana Alloy](docs/collect-json-logs-alloy.md) | Tutorial | Developers new to Grafana Alloy and Loki |
| [Observability for LLM applications](docs/llm-application-observability.md) | Concept page | Developers running LLM features in production |
| [LLM orchestration across models and regions](pdf/Sample_3_SRED_Narrative_LLM_Orchestration_Across_Models_and_Regions.pdf) | SR&ED technical narrative (PDF) | Canada Revenue Agency research and technology advisors |
| [Event delivery pipeline replatforming](pdf/Sample_4_SRED_Narrative_Event_Delivery_Pipeline_Replatforming.pdf) | SR&ED technical narrative (PDF) | Canada Revenue Agency research and technology advisors |

The concept page and the first SR&ED narrative cover the same LLM platform problems for two different readers.

Rendered PDFs of the two docs pages are in the [`pdf`](pdf/) folder. The Markdown uses Grafana's Hugo `admonition` shortcode, so notes and warnings appear as raw shortcodes when GitHub displays the files.

## Try the tutorial

The [`examples/collect-json-logs-alloy`](examples/collect-json-logs-alloy/) folder contains every file the tutorial asks you to create. With Docker Compose installed, run:

```bash
cd examples/collect-json-logs-alloy
docker compose up -d
```

Then open Explore at `http://localhost:3000/explore` and follow the tutorial from [Query the logs in Grafana](docs/collect-json-logs-alloy.md#query-the-logs-in-grafana).

## How I wrote and checked these samples

- I used AI assistance for outlines, first drafts, and consistency checks. I own the accuracy of every sentence.
- Both docs pages pass the Grafana Vale style rules with no errors or warnings.
- The tutorial's Alloy pipeline, labels output, and every LogQL query were run end to end against Alloy v1.21.0 and Loki 3.7.9.
- The concept page's Alloy configuration was validated on Alloy v1.21.0, and its metric names and PromQL queries were checked against live data in Prometheus 3.15.0.
- The SR&ED narratives are anonymized composites prepared as writing samples. They aren't filed claims and contain no client information.
