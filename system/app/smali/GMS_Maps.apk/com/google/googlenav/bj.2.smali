.class Lcom/google/googlenav/bJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LY/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    new-instance v0, LY/c;

    new-instance v1, LX/a;

    new-instance v2, LX/b;

    invoke-direct {v2}, LX/b;-><init>()V

    invoke-direct {v1, v2}, LX/a;-><init>(LX/d;)V

    invoke-direct {v0, v1}, LY/c;-><init>(LX/d;)V

    sput-object v0, Lcom/google/googlenav/bJ;->a:LY/c;

    return-void
.end method

.method static synthetic a()LY/c;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/googlenav/bJ;->a:LY/c;

    return-object v0
.end method
