.class public final LC/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LC/R;

.field public final b:LC/A;

.field public final c:LaP/a;

.field public final d:LaP/c;

.field public final e:Z

.field public final f:LC/B;


# direct methods
.method private constructor <init>(LC/R;LC/A;LaP/a;LaP/c;LC/B;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, LC/z;->a:LC/R;

    .line 91
    iput-object p2, p0, LC/z;->b:LC/A;

    .line 92
    iput-object p3, p0, LC/z;->c:LaP/a;

    .line 93
    iput-object p4, p0, LC/z;->d:LaP/c;

    .line 94
    iput-object p5, p0, LC/z;->f:LC/B;

    .line 95
    iput-boolean p6, p0, LC/z;->e:Z

    .line 96
    return-void
.end method

.method public static a(LC/R;)LC/z;
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 111
    new-instance v0, LC/z;

    sget-object v2, LC/A;->c:LC/A;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, LC/z;-><init>(LC/R;LC/A;LaP/a;LaP/c;LC/B;Z)V

    return-object v0
.end method

.method public static a(LC/R;LC/B;)LC/z;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 106
    new-instance v0, LC/z;

    sget-object v2, LC/A;->b:LC/A;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LC/z;-><init>(LC/R;LC/A;LaP/a;LaP/c;LC/B;Z)V

    return-object v0
.end method

.method public static a(LC/R;LaP/a;LaP/c;Z)LC/z;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    new-instance v0, LC/z;

    sget-object v2, LC/A;->a:LC/A;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, LC/z;-><init>(LC/R;LC/A;LaP/a;LaP/c;LC/B;Z)V

    return-object v0
.end method
