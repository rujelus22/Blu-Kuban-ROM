.class public final Lcom/android/athome/picker/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;FZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/athome/picker/an;-><init>(Ljava/lang/String;FZI)V

    .line 11
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FZI)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/athome/picker/an;->a:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/android/athome/picker/an;->b:F

    .line 16
    iput-boolean p3, p0, Lcom/android/athome/picker/an;->c:Z

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/athome/picker/an;->d:I

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/athome/picker/an;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/android/athome/picker/an;->b:F

    return v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/athome/picker/an;->c:Z

    return v0
.end method
