.class LaM/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/am;


# direct methods
.method constructor <init>(LaM/am;)V
    .registers 2
    .parameter

    .prologue
    .line 3232
    iput-object p1, p0, LaM/ap;->a:LaM/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3235
    iget-object v0, p0, LaM/ap;->a:LaM/am;

    invoke-virtual {v0}, LaM/am;->m()LaM/az;

    .line 3236
    return-void
.end method
