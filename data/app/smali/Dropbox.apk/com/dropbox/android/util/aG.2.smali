.class public final Lcom/dropbox/android/util/aG;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/io/Serializable;

.field private final b:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljava/io/Serializable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dropbox/android/util/aG;->a:Ljava/io/Serializable;

    .line 16
    iput-object p2, p0, Lcom/dropbox/android/util/aG;->b:Ljava/io/Serializable;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/Serializable;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dropbox/android/util/aG;->a:Ljava/io/Serializable;

    return-object v0
.end method
