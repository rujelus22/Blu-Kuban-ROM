.class Las/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Las/a;


# direct methods
.method constructor <init>(Las/a;)V
    .registers 2
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Las/c;->a:Las/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Las/c;->a:Las/a;

    invoke-virtual {v0}, Las/a;->p()V

    .line 564
    return-void
.end method
