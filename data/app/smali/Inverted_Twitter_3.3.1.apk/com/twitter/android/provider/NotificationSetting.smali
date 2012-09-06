.class public final enum Lcom/twitter/android/provider/NotificationSetting;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/twitter/android/provider/NotificationSetting;

.field public static final enum b:Lcom/twitter/android/provider/NotificationSetting;

.field public static final enum c:Lcom/twitter/android/provider/NotificationSetting;

.field public static final enum d:Lcom/twitter/android/provider/NotificationSetting;

.field public static final enum e:Lcom/twitter/android/provider/NotificationSetting;

.field public static final enum f:Lcom/twitter/android/provider/NotificationSetting;

.field private static final synthetic g:[Lcom/twitter/android/provider/NotificationSetting;


# instance fields
.field public final enabledFor:I

.field public final enabledForAll:I

.field public final settingEnabled:I

.field public final settingEnabledAll:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/4 v14, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twitter/android/provider/NotificationSetting;

    const-string v1, "MENTIONS"

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/provider/NotificationSetting;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/twitter/android/provider/NotificationSetting;->a:Lcom/twitter/android/provider/NotificationSetting;

    new-instance v7, Lcom/twitter/android/provider/NotificationSetting;

    const-string v8, "RETWEETS"

    const/16 v10, 0x8

    const/16 v12, 0x100

    const/16 v13, 0x80

    move v9, v4

    move v11, v6

    invoke-direct/range {v7 .. v13}, Lcom/twitter/android/provider/NotificationSetting;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/twitter/android/provider/NotificationSetting;->b:Lcom/twitter/android/provider/NotificationSetting;

    new-instance v7, Lcom/twitter/android/provider/NotificationSetting;

    const-string v8, "FAVORITES"

    const/16 v10, 0x20

    const/16 v11, 0x10

    sget v12, Lcom/twitter/android/platform/C2DMService;->b:I

    sget v13, Lcom/twitter/android/platform/C2DMService;->a:I

    move v9, v3

    invoke-direct/range {v7 .. v13}, Lcom/twitter/android/provider/NotificationSetting;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/twitter/android/provider/NotificationSetting;->c:Lcom/twitter/android/provider/NotificationSetting;

    new-instance v7, Lcom/twitter/android/provider/NotificationSetting;

    const-string v8, "FOLLOWS"

    const/16 v11, 0x40

    const/16 v13, 0x10

    move v9, v14

    move v10, v2

    move v12, v2

    invoke-direct/range {v7 .. v13}, Lcom/twitter/android/provider/NotificationSetting;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/twitter/android/provider/NotificationSetting;->d:Lcom/twitter/android/provider/NotificationSetting;

    new-instance v7, Lcom/twitter/android/provider/NotificationSetting;

    const-string v8, "MESSAGES"

    move v9, v6

    move v10, v2

    move v11, v4

    move v12, v2

    move v13, v4

    invoke-direct/range {v7 .. v13}, Lcom/twitter/android/provider/NotificationSetting;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/twitter/android/provider/NotificationSetting;->e:Lcom/twitter/android/provider/NotificationSetting;

    new-instance v7, Lcom/twitter/android/provider/NotificationSetting;

    const-string v8, "TWEETS"

    const/4 v9, 0x5

    const/16 v13, 0x200

    move v10, v2

    move v11, v4

    move v12, v2

    invoke-direct/range {v7 .. v13}, Lcom/twitter/android/provider/NotificationSetting;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/twitter/android/provider/NotificationSetting;->f:Lcom/twitter/android/provider/NotificationSetting;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/twitter/android/provider/NotificationSetting;

    sget-object v1, Lcom/twitter/android/provider/NotificationSetting;->a:Lcom/twitter/android/provider/NotificationSetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/android/provider/NotificationSetting;->b:Lcom/twitter/android/provider/NotificationSetting;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/android/provider/NotificationSetting;->c:Lcom/twitter/android/provider/NotificationSetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/android/provider/NotificationSetting;->d:Lcom/twitter/android/provider/NotificationSetting;

    aput-object v1, v0, v14

    sget-object v1, Lcom/twitter/android/provider/NotificationSetting;->e:Lcom/twitter/android/provider/NotificationSetting;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/twitter/android/provider/NotificationSetting;->f:Lcom/twitter/android/provider/NotificationSetting;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/NotificationSetting;->g:[Lcom/twitter/android/provider/NotificationSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .registers 7

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/twitter/android/provider/NotificationSetting;->settingEnabledAll:I

    iput p4, p0, Lcom/twitter/android/provider/NotificationSetting;->settingEnabled:I

    iput p5, p0, Lcom/twitter/android/provider/NotificationSetting;->enabledForAll:I

    iput p6, p0, Lcom/twitter/android/provider/NotificationSetting;->enabledFor:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/android/provider/NotificationSetting;
    .registers 2

    const-class v0, Lcom/twitter/android/provider/NotificationSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/NotificationSetting;

    return-object v0
.end method

.method public static values()[Lcom/twitter/android/provider/NotificationSetting;
    .registers 1

    sget-object v0, Lcom/twitter/android/provider/NotificationSetting;->g:[Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v0}, [Lcom/twitter/android/provider/NotificationSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/provider/NotificationSetting;

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    packed-switch p1, :pswitch_data_c

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->enabledFor:I

    goto :goto_4

    :pswitch_8
    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->enabledForAll:I

    goto :goto_4

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public final b(I)I
    .registers 3

    packed-switch p1, :pswitch_data_c

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->settingEnabled:I

    goto :goto_4

    :pswitch_8
    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->settingEnabledAll:I

    goto :goto_4

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public final c(I)I
    .registers 3

    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->settingEnabled:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->settingEnabledAll:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final d(I)I
    .registers 3

    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->settingEnabled:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->enabledFor:I

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->settingEnabledAll:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->enabledForAll:I

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final e(I)I
    .registers 3

    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->enabledForAll:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->settingEnabledAll:I

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->enabledFor:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/twitter/android/provider/NotificationSetting;->settingEnabled:I

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method
