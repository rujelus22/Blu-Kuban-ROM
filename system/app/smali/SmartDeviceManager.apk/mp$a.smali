.class public final Lmp$a;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lfb;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lmp$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 127
    new-instance v0, Lmp$a;

    invoke-direct {v0}, Lmp$a;-><init>()V

    sput-object v0, Lmp$a;->a:Lmp$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmp$a;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lmp$a;->a:Lmp$a;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
