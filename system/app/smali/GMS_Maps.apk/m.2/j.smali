.class public interface abstract LM/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/Extension;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 8
    new-instance v0, Lcom/google/googlenav/common/io/protocol/Extension;

    const v1, 0xca4e15

    sget-object v2, LM/i;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/Extension;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, LM/j;->a:Lcom/google/googlenav/common/io/protocol/Extension;

    return-void
.end method
