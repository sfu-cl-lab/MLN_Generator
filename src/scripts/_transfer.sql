DROP SCHEMA IF EXISTS imdb_MovieLens_BN; 
create schema imdb_MovieLens_BN;

DROP SCHEMA IF EXISTS imdb_MovieLens_CT; 
create schema imdb_MovieLens_CT;

USE imdb_MovieLens_BN;
SET storage_engine=INNODB;





create table 1Nodes as select * from imdb_MovieLens_setup.1Nodes;
create table 2Nodes as select * from imdb_MovieLens_setup.2Nodes;
create table RNodes as select * from imdb_MovieLens_setup.RNodes;
create table PVariables as select * from imdb_MovieLens_setup.PVariables;
create table EntityTables as select * from imdb_MovieLens_setup.EntityTables;
create table AttributeColumns as select * from imdb_MovieLens_setup.AttributeColumns;
create table TernaryRelations as select * from imdb_MovieLens_setup.TernaryRelations;
create table RelationTables as select * from imdb_MovieLens_setup.RelationTables;
create table NoPKeys as select * from  imdb_MovieLens_setup.NoPKeys;
create table ForeignKeyColumns as select * from  imdb_MovieLens_setup.ForeignKeyColumns;
create table ForeignKeys_pvars as select * from  imdb_MovieLens_setup.ForeignKeys_pvars;
create table InputColumns as select * from  imdb_MovieLens_setup.InputColumns;
create table Attribute_Value as select * from  imdb_MovieLens_setup.Attribute_Value;





