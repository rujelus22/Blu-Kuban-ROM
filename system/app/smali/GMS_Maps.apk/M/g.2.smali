.class Lm/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lm/F;


# direct methods
.method constructor <init>(Lm/F;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lm/G;->a:Lm/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lm/G;->a:Lm/F;

    invoke-virtual {v0}, Lm/F;->c()V

    .line 62
    return-void
.end method
