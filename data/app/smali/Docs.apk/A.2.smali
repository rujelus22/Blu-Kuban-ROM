.class LA;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lz;


# direct methods
.method constructor <init>(Lz;)V
    .registers 2
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, LA;->a:Lz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, LA;->a:Lz;

    invoke-virtual {v0}, Lz;->c()Z

    .line 421
    return-void
.end method
