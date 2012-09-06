.class synthetic Lcom/google/android/apps/plus/content/EsPeopleData$5;
.super Ljava/lang/Object;
.source "EsPeopleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsPeopleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

.field static final synthetic $SwitchMap$com$google$wireless$contacts$proto$Contact$SuggestionType$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 3987
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->values()[Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_5f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->DOMAIN:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_5d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->EXTENDED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5b

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->MY_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_59

    .line 2362
    :goto_35
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->values()[Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Contact$SuggestionType$Type:[I

    :try_start_3e
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Contact$SuggestionType$Type:[I

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_57

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Contact$SuggestionType$Type:[I

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->CELEBRITY:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    goto :goto_54

    :catch_57
    move-exception v0

    goto :goto_49

    .line 3987
    :catch_59
    move-exception v0

    goto :goto_35

    :catch_5b
    move-exception v0

    goto :goto_2a

    :catch_5d
    move-exception v0

    goto :goto_1f

    :catch_5f
    move-exception v0

    goto :goto_14
.end method
