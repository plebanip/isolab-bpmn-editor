# isolab-bpmn-editor

Editor based on [bpmn-js](https://github.com/bpmn-io/bpmn-js) with extension provided by [bpmn-js-token-simulation](https://github.com/bpmn-io/bpmn-js-token-simulation)

Docker image has been created following the instructions on [bpmn-io-docker](https://github.com/eduardoluizgs/bpmn-io-docker)

The editor is adopted in the following courses offered at Politecnico di Milano:
- Sistemi Informativi (per il Settore dell'Informazione)
- Tecnologie Digitali
- Process and Service Design

## Local deployment (source code)

[NodeJS](http://nodejs.org) development stack is required 

Clone the current git repo and run 

```
npm install
npm start
```
The editor is running on http://localhost:80

## Local deployment (docker image)

Run the command

```
 docker run --name isolab-bpmn-editor -p 80:80 -t plebanip/isolab-bpmn-editor
```
