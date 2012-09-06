.class Laof;
.super Ljava/lang/Object;
.source "BytecodeGen.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laoe;

.field final synthetic a:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Laoe;Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Laof;->a:Laoe;

    iput-object p2, p0, Laof;->a:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/ClassLoader;
    .registers 3

    .prologue
    .line 138
    new-instance v0, Laog;

    iget-object v1, p0, Laof;->a:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Laog;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Laof;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
