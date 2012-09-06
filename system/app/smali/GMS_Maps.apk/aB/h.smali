.class public abstract LaB/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LaB/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, LaB/h;->a:LaB/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static a(LaB/h;)V
    .registers 1
    .parameter

    .prologue
    .line 159
    sput-object p0, LaB/h;->a:LaB/h;

    .line 160
    return-void
.end method

.method public static i()LaB/h;
    .registers 1

    .prologue
    .line 154
    sget-object v0, LaB/h;->a:LaB/h;

    return-object v0
.end method


# virtual methods
.method public abstract a(LaB/i;)V
.end method

.method public abstract a(LaB/j;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()I
.end method

.method public abstract b(LaB/i;)V
.end method

.method public abstract c()Z
.end method

.method public abstract d()F
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method

.method public g()V
    .registers 1

    .prologue
    .line 123
    invoke-virtual {p0}, LaB/h;->f()V

    .line 124
    return-void
.end method

.method public h()V
    .registers 1

    .prologue
    .line 131
    invoke-virtual {p0}, LaB/h;->e()V

    .line 132
    return-void
.end method
