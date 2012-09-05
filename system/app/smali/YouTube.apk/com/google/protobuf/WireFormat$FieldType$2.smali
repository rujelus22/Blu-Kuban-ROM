.class final enum Lcom/google/protobuf/WireFormat$FieldType$2;
.super Lcom/google/protobuf/WireFormat$FieldType;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;ILcom/google/protobuf/l;)V

    return-void
.end method


# virtual methods
.method public final isPackable()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method
