.class public abstract Lz/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field protected c:Z

.field protected d:I

.field protected e:Lz/j;

.field final f:Lz/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    invoke-static {}, Lz/n;->values()[Lz/n;

    move-result-object v0

    array-length v0, v0

    sput v0, Lz/m;->a:I

    .line 62
    sget-object v0, Lz/n;->b:Lz/n;

    invoke-virtual {v0}, Lz/n;->a()I

    move-result v0

    sput v0, Lz/m;->b:I

    return-void
.end method

.method protected constructor <init>(Lz/n;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v0, p0, Lz/m;->c:Z

    .line 77
    iput v0, p0, Lz/m;->d:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lz/m;->e:Lz/j;

    .line 97
    iput-object p1, p0, Lz/m;->f:Lz/n;

    .line 103
    return-void
.end method


# virtual methods
.method a(Lz/h;)V
    .registers 3
    .parameter

    .prologue
    .line 171
    iget v0, p0, Lz/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/m;->d:I

    .line 172
    return-void
.end method

.method abstract a(Lz/j;Lz/m;)V
.end method

.method a(Lz/j;Lz/i;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-boolean v1, p2, Lz/i;->e:Z

    iget-boolean v2, p0, Lz/m;->c:Z

    if-ne v1, v2, :cond_c

    iget-boolean v1, p2, Lz/i;->f:Z

    if-nez v1, :cond_c

    .line 138
    :cond_b
    :goto_b
    return v0

    .line 130
    :cond_c
    iget-boolean v1, p2, Lz/i;->e:Z

    if-nez v1, :cond_18

    iget-boolean v1, p2, Lz/i;->f:Z

    if-nez v1, :cond_18

    .line 131
    iget v1, p0, Lz/m;->d:I

    if-nez v1, :cond_b

    .line 136
    :cond_18
    iget-boolean v0, p2, Lz/i;->e:Z

    iput-boolean v0, p0, Lz/m;->c:Z

    .line 137
    iget-boolean v0, p0, Lz/m;->c:Z

    if-eqz v0, :cond_24

    :goto_20
    iput-object p1, p0, Lz/m;->e:Lz/j;

    .line 138
    const/4 v0, 0x1

    goto :goto_b

    .line 137
    :cond_24
    const/4 p1, 0x0

    goto :goto_20
.end method

.method b(Lz/h;)V
    .registers 3
    .parameter

    .prologue
    .line 186
    iget v0, p0, Lz/m;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz/m;->d:I

    .line 187
    return-void
.end method
