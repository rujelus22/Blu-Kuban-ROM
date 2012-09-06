.class public Ld/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ld/n;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 90
    new-instance v0, Ld/o;

    invoke-direct {v0}, Ld/o;-><init>()V

    sput-object v0, Ld/m;->a:Ld/n;

    .line 94
    :goto_d
    return-void

    .line 92
    :cond_e
    new-instance v0, Ld/q;

    invoke-direct {v0}, Ld/q;-><init>()V

    sput-object v0, Ld/m;->a:Ld/n;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Ld/m;->a:Ld/n;

    invoke-interface {v0, p0}, Ld/n;->a(Ld/m;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ld/m;->b:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Ld/m;->b:Ljava/lang/Object;

    .line 111
    return-void
.end method


# virtual methods
.method public a(I)Ld/f;
    .registers 3
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Ld/m;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method
