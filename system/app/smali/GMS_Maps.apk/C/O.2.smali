.class LC/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LC/N;


# direct methods
.method constructor <init>(LC/N;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, LC/O;->a:LC/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 33
    iget-object v0, p0, LC/O;->a:LC/N;

    const/4 v1, 0x1

    iput v1, v0, LC/N;->a:I

    .line 34
    iget-object v0, p0, LC/O;->a:LC/N;

    const-string v1, "network"

    const-string v2, "network"

    iget-object v3, p0, LC/O;->a:LC/N;

    iget v3, v3, LC/N;->a:I

    invoke-virtual {v0, v1, v2, v3}, LC/N;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method
