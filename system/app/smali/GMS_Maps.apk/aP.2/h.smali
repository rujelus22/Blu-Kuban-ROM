.class public abstract LaP/h;
.super Ljava/lang/Object;


# static fields
.field private static a:LaP/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, LaP/h;->a:LaP/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LaP/h;)V
    .registers 1

    sput-object p0, LaP/h;->a:LaP/h;

    return-void
.end method

.method public static i()LaP/h;
    .registers 1

    sget-object v0, LaP/h;->a:LaP/h;

    return-object v0
.end method


# virtual methods
.method public abstract a(LaP/i;)V
.end method

.method public abstract a(LaP/j;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()I
.end method

.method public abstract b(LaP/i;)V
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

    invoke-virtual {p0}, LaP/h;->f()V

    return-void
.end method

.method public h()V
    .registers 1

    invoke-virtual {p0}, LaP/h;->e()V

    return-void
.end method
