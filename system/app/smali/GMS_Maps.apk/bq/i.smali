.class public interface abstract Lbq/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/Extension;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 66
    new-instance v0, Lcom/google/googlenav/common/io/protocol/Extension;

    const v1, 0xc4965c

    sget-object v2, Lbq/a;->l:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/Extension;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, Lbq/i;->a:Lcom/google/googlenav/common/io/protocol/Extension;

    return-void
.end method
