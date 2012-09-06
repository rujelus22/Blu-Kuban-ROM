.class public Lcom/google/googlenav/common/io/protocol/Extension;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fieldNumber:I

.field public final messageType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/google/googlenav/common/io/protocol/Extension;->fieldNumber:I

    .line 22
    iput-object p2, p0, Lcom/google/googlenav/common/io/protocol/Extension;->messageType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 23
    return-void
.end method
