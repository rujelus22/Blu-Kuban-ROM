.class public final Lcom/google/android/ytremote/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/google/android/ytremote/b/b;->a:Z

    .line 29
    iput-object p2, p0, Lcom/google/android/ytremote/b/b;->b:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/ytremote/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/ytremote/b/b;->a:Z

    return v0
.end method
