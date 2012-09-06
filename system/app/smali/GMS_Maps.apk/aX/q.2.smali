.class Lax/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lax/o;


# direct methods
.method constructor <init>(Lax/o;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lax/q;->a:Lax/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lax/q;->a:Lax/o;

    invoke-static {v0}, Lax/o;->a(Lax/o;)V

    .line 300
    return-void
.end method
