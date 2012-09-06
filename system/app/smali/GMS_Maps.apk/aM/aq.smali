.class LaM/aq;
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
    .line 3250
    iput-object p1, p0, LaM/aq;->a:LaM/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3253
    iget-object v0, p0, LaM/aq;->a:LaM/am;

    iget-object v1, p0, LaM/aq;->a:LaM/am;

    invoke-virtual {v1}, LaM/am;->I()LaM/i;

    move-result-object v1

    invoke-virtual {v0, v1}, LaM/am;->d(LaM/i;)V

    .line 3254
    return-void
.end method
