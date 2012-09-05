.class public final enum Lcom/google/android/finsky/config/ContentLevel;
.super Ljava/lang/Enum;
.source "ContentLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/config/ContentLevel$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/config/ContentLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/config/ContentLevel;

.field private static final DEFAULT_VALUE:Lcom/google/android/finsky/config/ContentLevel;

.field public static final enum EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

.field public static final enum HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

.field public static final enum LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

.field public static final enum MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

.field public static final enum SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 25
    new-instance v0, Lcom/google/android/finsky/config/ContentLevel;

    const-string v1, "EVERYONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/finsky/config/ContentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    .line 26
    new-instance v0, Lcom/google/android/finsky/config/ContentLevel;

    const-string v1, "LOW_MATURITY"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/finsky/config/ContentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    .line 27
    new-instance v0, Lcom/google/android/finsky/config/ContentLevel;

    const-string v1, "MEDIUM_MATURITY"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/finsky/config/ContentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    .line 28
    new-instance v0, Lcom/google/android/finsky/config/ContentLevel;

    const-string v1, "HIGH_MATURITY"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/finsky/config/ContentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    .line 29
    new-instance v0, Lcom/google/android/finsky/config/ContentLevel;

    const-string v1, "SHOW_ALL"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/finsky/config/ContentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/config/ContentLevel;

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->$VALUES:[Lcom/google/android/finsky/config/ContentLevel;

    .line 36
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingContentRating:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/config/ContentLevel;->convertFromLegacyValue(I)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->DEFAULT_VALUE:Lcom/google/android/finsky/config/ContentLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "legacyValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    .line 43
    return-void
.end method

.method public static convertFromLegacyValue(I)Lcom/google/android/finsky/config/ContentLevel;
    .registers 6
    .parameter "legacyValue"

    .prologue
    .line 97
    const/4 v4, -0x1

    if-ne p0, v4, :cond_6

    .line 98
    sget-object v3, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    .line 105
    :cond_5
    :goto_5
    return-object v3

    .line 100
    :cond_6
    invoke-static {}, Lcom/google/android/finsky/config/ContentLevel;->values()[Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/finsky/config/ContentLevel;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_c
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 101
    .local v3, level:Lcom/google/android/finsky/config/ContentLevel;
    iget v4, v3, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    if-eq v4, p0, :cond_5

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 105
    .end local v3           #level:Lcom/google/android/finsky/config/ContentLevel;
    :cond_17
    sget-object v3, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    goto :goto_5
.end method

.method public static importFromSettings(Landroid/content/Context;)Lcom/google/android/finsky/config/ContentLevel;
    .registers 10
    .parameter "context"

    .prologue
    const/4 v8, -0x1

    .line 67
    sget-object v7, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 70
    .local v5, modernValue:I
    if-ne v5, v8, :cond_27

    .line 71
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyPreferences;->getPreferencesFile()Lcom/google/android/finsky/config/PreferenceFile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 72
    .local v6, preferences:Landroid/content/SharedPreferences;
    invoke-static {p0, v6}, Lcom/google/android/finsky/config/ContentLevel;->migrateOldLevels(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v4

    .line 75
    .local v4, migratedModernValue:I
    if-eq v4, v8, :cond_27

    .line 76
    sget-object v7, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 77
    move v5, v4

    .line 82
    .end local v4           #migratedModernValue:I
    .end local v6           #preferences:Landroid/content/SharedPreferences;
    :cond_27
    if-ltz v5, :cond_3b

    .line 83
    invoke-static {}, Lcom/google/android/finsky/config/ContentLevel;->values()[Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/finsky/config/ContentLevel;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2f
    if-ge v1, v2, :cond_3b

    aget-object v3, v0, v1

    .line 84
    .local v3, level:Lcom/google/android/finsky/config/ContentLevel;
    iget v7, v3, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    if-ne v7, v5, :cond_38

    .line 91
    .end local v0           #arr$:[Lcom/google/android/finsky/config/ContentLevel;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #level:Lcom/google/android/finsky/config/ContentLevel;
    :goto_37
    return-object v3

    .line 83
    .restart local v0       #arr$:[Lcom/google/android/finsky/config/ContentLevel;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #level:Lcom/google/android/finsky/config/ContentLevel;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 91
    .end local v0           #arr$:[Lcom/google/android/finsky/config/ContentLevel;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #level:Lcom/google/android/finsky/config/ContentLevel;
    :cond_3b
    sget-object v3, Lcom/google/android/finsky/config/ContentLevel;->DEFAULT_VALUE:Lcom/google/android/finsky/config/ContentLevel;

    goto :goto_37
.end method

.method private static migrateOldLevels(Landroid/content/Context;Landroid/content/SharedPreferences;)I
    .registers 18
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 125
    const/4 v11, 0x0

    .line 126
    .local v11, perAccountFound:Z
    sget-object v14, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v14}, Lcom/google/android/finsky/config/ContentLevel;->getDfeValue()I

    move-result v12

    .line 127
    .local v12, perAccountMinimum:I
    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v10

    .line 128
    .local v10, listOfAccounts:[Landroid/accounts/Account;
    array-length v14, v10

    add-int/lit8 v2, v14, -0x1

    .local v2, accountNum:I
    :goto_e
    if-ltz v2, :cond_2f

    .line 129
    aget-object v14, v10, v2

    iget-object v1, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 130
    .local v1, accountName:Ljava/lang/String;
    sget-object v14, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Lcom/google/android/finsky/utils/Utils;->getPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 133
    .local v13, perAccountValue:I
    if-ltz v13, :cond_2c

    .line 134
    const/4 v11, 0x1

    .line 135
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 128
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 138
    .end local v1           #accountName:Ljava/lang/String;
    .end local v13           #perAccountValue:I
    :cond_2f
    if-eqz v11, :cond_32

    .line 155
    .end local v12           #perAccountMinimum:I
    :goto_31
    return v12

    .line 143
    .restart local v12       #perAccountMinimum:I
    :cond_32
    new-instance v6, Lcom/google/android/finsky/config/PreferenceFile;

    const-string v14, "vending_preferences"

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15}, Lcom/google/android/finsky/config/PreferenceFile;-><init>(Ljava/lang/String;I)V

    .line 144
    .local v6, legacyPrefs:Lcom/google/android/finsky/config/PreferenceFile;
    const-string v14, "content_rating"

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v5

    .line 146
    .local v5, legacyContentRatingPreference:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v14

    if-eqz v14, :cond_69

    .line 147
    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 148
    .local v7, legacyValue:I
    invoke-static {}, Lcom/google/android/finsky/config/ContentLevel;->values()[Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v3

    .local v3, arr$:[Lcom/google/android/finsky/config/ContentLevel;
    array-length v8, v3

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_5b
    if-ge v4, v8, :cond_69

    aget-object v9, v3, v4

    .line 149
    .local v9, level:Lcom/google/android/finsky/config/ContentLevel;
    iget v14, v9, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    if-ne v14, v7, :cond_66

    .line 150
    iget v12, v9, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    goto :goto_31

    .line 148
    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 155
    .end local v3           #arr$:[Lcom/google/android/finsky/config/ContentLevel;
    .end local v4           #i$:I
    .end local v7           #legacyValue:I
    .end local v8           #len$:I
    .end local v9           #level:Lcom/google/android/finsky/config/ContentLevel;
    :cond_69
    const/4 v12, -0x1

    goto :goto_31
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/config/ContentLevel;
    .registers 2
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/google/android/finsky/config/ContentLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/config/ContentLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/config/ContentLevel;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/finsky/config/ContentLevel;->$VALUES:[Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v0}, [Lcom/google/android/finsky/config/ContentLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/config/ContentLevel;

    return-object v0
.end method


# virtual methods
.method public encompasses(Lcom/google/android/finsky/config/ContentLevel;)Z
    .registers 6
    .parameter "otherLevel"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 46
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel$1;->$SwitchMap$com$google$android$finsky$config$ContentLevel:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/config/ContentLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_30

    move v0, v1

    .line 58
    :cond_e
    :goto_e
    :pswitch_e
    return v0

    .line 52
    :pswitch_f
    sget-object v0, Lcom/google/android/finsky/config/ContentLevel;->MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e

    .line 54
    :pswitch_1e
    sget-object v0, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e

    .line 56
    :pswitch_2b
    if-eq p1, p0, :cond_e

    move v0, v1

    goto :goto_e

    .line 46
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_1e
        :pswitch_2b
    .end packed-switch
.end method

.method public exportToSettings(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget v1, p0, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public getDfeValue()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    return v0
.end method
