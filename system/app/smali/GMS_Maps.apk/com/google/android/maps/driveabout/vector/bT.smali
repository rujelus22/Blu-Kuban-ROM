.class public Lcom/google/android/maps/driveabout/vector/bT;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bT;->f:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bT;->g:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/bT;->h:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/vector/bT;->a:Z

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/bT;->b:I

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/bT;->c:I

    iput p7, p0, Lcom/google/android/maps/driveabout/vector/bT;->d:I

    iput p8, p0, Lcom/google/android/maps/driveabout/vector/bT;->e:I

    return-void
.end method

.method public static a()Lcom/google/android/maps/driveabout/vector/bU;
    .registers 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bU;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bU;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(ZZZ)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bT;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bT;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bT;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bT;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p2, :cond_d

    :cond_1a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bT;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bT;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p3, :cond_d

    :cond_26
    const/4 v0, 0x1

    goto :goto_d
.end method
