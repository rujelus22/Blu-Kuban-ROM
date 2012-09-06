.class public Lcom/google/android/maps/driveabout/vector/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field private final f:Ljava/lang/Boolean;

.field private final g:Ljava/lang/Boolean;

.field private final h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZIIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cn;->f:Ljava/lang/Boolean;

    .line 897
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cn;->g:Ljava/lang/Boolean;

    .line 898
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/cn;->h:Ljava/lang/Boolean;

    .line 899
    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/vector/cn;->a:Z

    .line 900
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/cn;->b:I

    .line 901
    iput p6, p0, Lcom/google/android/maps/driveabout/vector/cn;->c:I

    .line 902
    iput p7, p0, Lcom/google/android/maps/driveabout/vector/cn;->d:I

    .line 903
    iput p8, p0, Lcom/google/android/maps/driveabout/vector/cn;->e:I

    .line 904
    return-void
.end method

.method public static a()Lcom/google/android/maps/driveabout/vector/co;
    .registers 1

    .prologue
    .line 920
    new-instance v0, Lcom/google/android/maps/driveabout/vector/co;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/co;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(ZZZ)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 907
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_e

    .line 916
    :cond_d
    :goto_d
    return v0

    .line 910
    :cond_e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p2, :cond_d

    .line 913
    :cond_1a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cn;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p3, :cond_d

    .line 916
    :cond_26
    const/4 v0, 0x1

    goto :goto_d
.end method
