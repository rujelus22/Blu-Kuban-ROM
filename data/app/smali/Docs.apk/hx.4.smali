.class public Lhx;
.super Lanf;
.source "VersionCheckModule.java"


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lanf;-><init>()V

    .line 33
    iput-object p1, p0, Lhx;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lhx;->b:Ljava/lang/String;

    .line 35
    iput p3, p0, Lhx;->a:I

    .line 36
    iput p4, p0, Lhx;->b:I

    .line 37
    iput p5, p0, Lhx;->c:I

    .line 38
    iput p6, p0, Lhx;->d:I

    .line 39
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 8

    .prologue
    .line 43
    const-class v0, Lht;

    invoke-virtual {p0, v0}, Lhx;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lhw;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 44
    new-instance v0, Lhy;

    iget-object v1, p0, Lhx;->a:Ljava/lang/String;

    iget-object v2, p0, Lhx;->b:Ljava/lang/String;

    iget v3, p0, Lhx;->a:I

    iget v4, p0, Lhx;->b:I

    iget v5, p0, Lhx;->c:I

    iget v6, p0, Lhx;->d:I

    invoke-direct/range {v0 .. v6}, Lhy;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {p0, v0}, Lhx;->a(Lanz;)V

    .line 46
    return-void
.end method
