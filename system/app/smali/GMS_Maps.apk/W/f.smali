.class public final LW/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, LW/f;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LW/a;I)J
    .registers 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_e

    :try_start_4
    invoke-virtual {p0, p1}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0, p1}, LW/a;->d(I)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-wide v0

    :cond_e
    :goto_e
    return-wide v0

    :catch_f
    move-exception v2

    goto :goto_e

    :catch_11
    move-exception v2

    goto :goto_e
.end method
