.class public Lcom/google/android/maps/driveabout/vector/co;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    const v0, 0x73217bce

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/co;->g:I

    .line 938
    const v0, 0x338cc6ef

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/co;->h:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/co;
    .registers 2

    .prologue
    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/co;->f:Z

    .line 980
    return-object p0
.end method

.method public a(I)Lcom/google/android/maps/driveabout/vector/co;
    .registers 3
    .parameter

    .prologue
    .line 959
    invoke-virtual {p0, p1, p1}, Lcom/google/android/maps/driveabout/vector/co;->a(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/google/android/maps/driveabout/vector/co;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 967
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/co;->d:Ljava/lang/Integer;

    .line 968
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/co;->e:Ljava/lang/Integer;

    .line 969
    return-object p0
.end method

.method public a(Z)Lcom/google/android/maps/driveabout/vector/co;
    .registers 3
    .parameter

    .prologue
    .line 941
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/co;->a:Ljava/lang/Boolean;

    .line 942
    return-object p0
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/co;
    .registers 2

    .prologue
    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/co;->f:Z

    .line 985
    return-object p0
.end method

.method public b(II)Lcom/google/android/maps/driveabout/vector/co;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 973
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/co;->g:I

    .line 974
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/co;->h:I

    .line 975
    return-object p0
.end method

.method public b(Z)Lcom/google/android/maps/driveabout/vector/co;
    .registers 3
    .parameter

    .prologue
    .line 946
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/co;->b:Ljava/lang/Boolean;

    .line 947
    return-object p0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/cn;
    .registers 10

    .prologue
    .line 989
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/co;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Texture ID must be specified."

    invoke-static {v0, v1}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 990
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cn;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/co;->a:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/co;->b:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/co;->c:Ljava/lang/Boolean;

    iget-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/co;->f:Z

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/co;->d:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/co;->e:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/co;->g:I

    iget v8, p0, Lcom/google/android/maps/driveabout/vector/co;->h:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cn;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZIIII)V

    return-object v0

    .line 989
    :cond_28
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c(Z)Lcom/google/android/maps/driveabout/vector/co;
    .registers 3
    .parameter

    .prologue
    .line 951
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/co;->c:Ljava/lang/Boolean;

    .line 952
    return-object p0
.end method
