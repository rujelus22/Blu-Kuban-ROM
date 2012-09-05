.class public final enum Lfm$a;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4031
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfm$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfm$a;

.field public static final enum ANY:Lfm$a;

.field public static final enum DEFAULT:Lfm$a;

.field public static final enum NONE:Lfm$a;

.field public static final enum NON_PRIVATE:Lfm$a;

.field public static final enum PROTECTED_AND_PUBLIC:Lfm$a;

.field public static final enum PUBLIC_ONLY:Lfm$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lfm$a;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v3}, Lfm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfm$a;->ANY:Lfm$a;

    .line 55
    new-instance v0, Lfm$a;

    const-string v1, "NON_PRIVATE"

    invoke-direct {v0, v1, v4}, Lfm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfm$a;->NON_PRIVATE:Lfm$a;

    .line 61
    new-instance v0, Lfm$a;

    const-string v1, "PROTECTED_AND_PUBLIC"

    invoke-direct {v0, v1, v5}, Lfm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfm$a;->PROTECTED_AND_PUBLIC:Lfm$a;

    .line 66
    new-instance v0, Lfm$a;

    const-string v1, "PUBLIC_ONLY"

    invoke-direct {v0, v1, v6}, Lfm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfm$a;->PUBLIC_ONLY:Lfm$a;

    .line 72
    new-instance v0, Lfm$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v7}, Lfm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfm$a;->NONE:Lfm$a;

    .line 79
    new-instance v0, Lfm$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfm$a;->DEFAULT:Lfm$a;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lfm$a;

    sget-object v1, Lfm$a;->ANY:Lfm$a;

    aput-object v1, v0, v3

    sget-object v1, Lfm$a;->NON_PRIVATE:Lfm$a;

    aput-object v1, v0, v4

    sget-object v1, Lfm$a;->PROTECTED_AND_PUBLIC:Lfm$a;

    aput-object v1, v0, v5

    sget-object v1, Lfm$a;->PUBLIC_ONLY:Lfm$a;

    aput-object v1, v0, v6

    sget-object v1, Lfm$a;->NONE:Lfm$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfm$a;->DEFAULT:Lfm$a;

    aput-object v2, v0, v1

    sput-object v0, Lfm$a;->$VALUES:[Lfm$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfm$a;
    .registers 2
    .parameter

    .prologue
    .line 45
    const-class v0, Lfm$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfm$a;

    return-object p0
.end method

.method public static values()[Lfm$a;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lfm$a;->$VALUES:[Lfm$a;

    invoke-virtual {v0}, [Lfm$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfm$a;

    return-object v0
.end method


# virtual methods
.method public final isVisible(Ljava/lang/reflect/Member;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    sget-object v0, Lfm$1;->a:[I

    invoke-virtual {p0}, Lfm$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    move v0, v2

    .line 97
    :goto_e
    return v0

    :pswitch_f
    move v0, v3

    .line 84
    goto :goto_e

    :pswitch_11
    move v0, v2

    .line 86
    goto :goto_e

    .line 88
    :pswitch_13
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v3

    goto :goto_e

    :cond_1f
    move v0, v2

    goto :goto_e

    .line 90
    :pswitch_21
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v3

    .line 91
    goto :goto_e

    .line 95
    :cond_2d
    :pswitch_2d
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    goto :goto_e

    .line 82
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_21
        :pswitch_2d
    .end packed-switch
.end method
