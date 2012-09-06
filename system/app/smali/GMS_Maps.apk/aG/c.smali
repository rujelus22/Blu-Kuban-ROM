.class public Lag/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# instance fields
.field final b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final d:I

.field final e:I

.field volatile f:I

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 212
    const/4 v0, 0x0

    sput v0, Lag/c;->a:I

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-static {p1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lag/c;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lag/c;->c:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-static {p1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lag/c;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lag/c;->b:Ljava/lang/String;

    .line 239
    iput p2, p0, Lag/c;->e:I

    .line 240
    iput p3, p0, Lag/c;->d:I

    .line 241
    iput-object p4, p0, Lag/c;->g:Ljava/lang/String;

    .line 242
    iput-object p5, p0, Lag/c;->h:Ljava/lang/String;

    .line 243
    sget v0, Lag/c;->a:I

    iput v0, p0, Lag/c;->f:I

    .line 244
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lag/c;->f:I

    return v0
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 265
    iget v0, p0, Lag/c;->f:I

    if-eq v0, p1, :cond_16

    .line 266
    iput p1, p0, Lag/c;->f:I

    .line 267
    invoke-static {p1}, Lag/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lag/c;->c:Ljava/lang/String;

    .line 271
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    invoke-virtual {v0}, Lag/h;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 277
    :cond_16
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Lag/c;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lag/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lag/c;->h:Ljava/lang/String;

    return-object v0
.end method
