.class public final Landroid/support/v4/view/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/support/v4/view/a/g;


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
    new-instance v0, Landroid/support/v4/view/a/h;

    invoke-direct {v0}, Landroid/support/v4/view/a/h;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/f;->a:Landroid/support/v4/view/a/g;

    .line 94
    :goto_d
    return-void

    .line 92
    :cond_e
    new-instance v0, Landroid/support/v4/view/a/j;

    invoke-direct {v0}, Landroid/support/v4/view/a/j;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/f;->a:Landroid/support/v4/view/a/g;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Landroid/support/v4/view/a/f;->a:Landroid/support/v4/view/a/g;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/g;->a(Landroid/support/v4/view/a/f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a/f;->b:Ljava/lang/Object;

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
    iput-object p1, p0, Landroid/support/v4/view/a/f;->b:Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public static b()Landroid/support/v4/view/a/a;
    .registers 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public static d()Ljava/util/List;
    .registers 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v4/view/a/f;->b:Ljava/lang/Object;

    return-object v0
.end method
