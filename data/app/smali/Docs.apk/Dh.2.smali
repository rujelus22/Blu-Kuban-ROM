.class LDh;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LDf;


# direct methods
.method constructor <init>(LDf;)V
    .registers 2
    .parameter

    .prologue
    .line 8141
    iput-object p1, p0, LDh;->a:LDf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 8144
    iget-object v0, p0, LDh;->a:LDf;

    invoke-virtual {v0}, LDf;->d()V

    .line 8145
    return-void
.end method
