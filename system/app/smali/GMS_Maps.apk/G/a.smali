.class public LG/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)LL/e;
    .registers 2

    new-instance v0, LG/b;

    invoke-direct {v0, p0}, LG/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
