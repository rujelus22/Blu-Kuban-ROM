.class public Lhy;
.super Lanf;
.source "VersionCheckResourcesModule.java"


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
    .line 33
    invoke-direct {p0}, Lanf;-><init>()V

    .line 34
    iput-object p1, p0, Lhy;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lhy;->b:Ljava/lang/String;

    .line 36
    iput p3, p0, Lhy;->a:I

    .line 37
    iput p4, p0, Lhy;->b:I

    .line 38
    iput p5, p0, Lhy;->c:I

    .line 39
    iput p6, p0, Lhy;->d:I

    .line 40
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 44
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lhy;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-string v1, "versionFlag"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    iget-object v1, p0, Lhy;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LanU;->a(Ljava/lang/Object;)V

    .line 48
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lhy;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-string v1, "marketFlag"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    iget-object v1, p0, Lhy;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, LanU;->a(Ljava/lang/Object;)V

    .line 52
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lhy;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-string v1, "tooOldClose"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    iget v1, p0, Lhy;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, LanU;->a(Ljava/lang/Object;)V

    .line 56
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lhy;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-string v1, "tooOldMessage"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    iget v1, p0, Lhy;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, LanU;->a(Ljava/lang/Object;)V

    .line 60
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lhy;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-string v1, "tooOldTitle"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    iget v1, p0, Lhy;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, LanU;->a(Ljava/lang/Object;)V

    .line 64
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lhy;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-string v1, "tooOldUpgrade"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    iget v1, p0, Lhy;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, LanU;->a(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
