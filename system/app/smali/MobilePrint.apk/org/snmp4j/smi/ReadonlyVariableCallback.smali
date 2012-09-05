.class public abstract Lorg/snmp4j/smi/ReadonlyVariableCallback;
.super Ljava/lang/Object;
.source "ReadonlyVariableCallback.java"

# interfaces
.implements Lorg/snmp4j/smi/VariantVariableCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract updateVariable(Lorg/snmp4j/smi/VariantVariable;)V
.end method

.method public final variableUpdated(Lorg/snmp4j/smi/VariantVariable;)V
    .registers 2
    .parameter "variable"

    .prologue
    .line 40
    return-void
.end method
