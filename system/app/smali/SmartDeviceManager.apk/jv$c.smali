.class public Ljv$c;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "c"
.end annotation


# static fields
.field public static final b:Ljv$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Ljv$c;

    invoke-direct {v0}, Ljv$c;-><init>()V

    sput-object v0, Ljv$c;->b:Ljv$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 76
    :goto_d
    return v0

    .line 59
    :cond_e
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 61
    packed-switch v0, :pswitch_data_1c

    move v0, v1

    .line 76
    goto :goto_d

    :pswitch_18
    move v0, v2

    .line 64
    goto :goto_d

    :pswitch_1a
    move v0, v2

    .line 74
    goto :goto_d

    .line 61
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method
