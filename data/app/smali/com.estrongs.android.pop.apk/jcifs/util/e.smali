.class public Ljcifs/util/e;
.super Ljava/io/PrintStream;


# static fields
.field public static a:I

.field private static b:Ljcifs/util/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Ljcifs/util/e;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static a()Ljcifs/util/e;
    .registers 1

    sget-object v0, Ljcifs/util/e;->b:Ljcifs/util/e;

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Ljcifs/util/e;->a(Ljava/io/PrintStream;)V

    :cond_9
    sget-object v0, Ljcifs/util/e;->b:Ljcifs/util/e;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Ljcifs/util/e;->a:I

    return-void
.end method

.method public static a(Ljava/io/PrintStream;)V
    .registers 2

    new-instance v0, Ljcifs/util/e;

    invoke-direct {v0, p0}, Ljcifs/util/e;-><init>(Ljava/io/PrintStream;)V

    sput-object v0, Ljcifs/util/e;->b:Ljcifs/util/e;

    return-void
.end method
