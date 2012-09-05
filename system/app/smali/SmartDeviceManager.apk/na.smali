.class public final Lna;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lna$a;
    }
.end annotation


# instance fields
.field final a:Lna;

.field final b:Z

.field private c:I

.field private d:I

.field private e:[I

.field private f:[Lnc;

.field private g:[Lna$a;

.field private h:I

.field private transient i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x40

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object v4, p0, Lna;->a:Lna;

    .line 202
    iput-boolean v2, p0, Lna;->b:Z

    .line 206
    iput v1, p0, Lna;->c:I

    new-array v0, v3, [I

    iput-object v0, p0, Lna;->e:[I

    new-array v0, v3, [Lnc;

    iput-object v0, p0, Lna;->f:[Lnc;

    iput-boolean v1, p0, Lna;->j:Z

    iput-boolean v1, p0, Lna;->k:Z

    const/16 v0, 0x3f

    iput v0, p0, Lna;->d:I

    iput-boolean v2, p0, Lna;->l:Z

    iput-object v4, p0, Lna;->g:[Lna$a;

    iput v1, p0, Lna;->h:I

    iput-boolean v1, p0, Lna;->i:Z

    .line 221
    return-void
.end method
