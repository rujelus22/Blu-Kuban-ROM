.class public final Lcom/google/android/plus1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/util/Set;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/google/android/plus1/u;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-object v0, p1, Lcom/google/android/plus1/u;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/plus1/v;->a:Landroid/net/Uri;

    .line 99
    iget-object v0, p1, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/plus1/v;->b:Ljava/lang/Boolean;

    .line 100
    iget-object v0, p1, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/plus1/v;->c:Ljava/util/Set;

    .line 101
    iget v0, p1, Lcom/google/android/plus1/u;->d:I

    iput v0, p0, Lcom/google/android/plus1/v;->d:I

    .line 102
    iget-object v0, p1, Lcom/google/android/plus1/u;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/plus1/v;->e:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/plus1/u;
    .registers 7

    .prologue
    .line 105
    new-instance v0, Lcom/google/android/plus1/u;

    iget-object v1, p0, Lcom/google/android/plus1/v;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/plus1/v;->b:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/plus1/v;->c:Ljava/util/Set;

    iget v4, p0, Lcom/google/android/plus1/v;->d:I

    iget-object v5, p0, Lcom/google/android/plus1/v;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/plus1/u;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;ILjava/lang/String;)V

    return-object v0
.end method
