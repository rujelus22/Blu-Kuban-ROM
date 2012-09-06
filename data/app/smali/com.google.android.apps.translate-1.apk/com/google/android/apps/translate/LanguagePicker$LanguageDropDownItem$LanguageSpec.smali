.class public final enum Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;
.super Ljava/lang/Enum;
.source "LanguagePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LanguageSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

.field public static final enum NORMAL:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

.field public static final enum RECENTLY_USED:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

.field public static final enum SELECT:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;


# instance fields
.field private final priority:I

.field private final resourceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 440
    new-instance v0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->NORMAL:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    .line 441
    new-instance v0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    const-string v1, "RECENTLY_USED"

    const/4 v2, 0x5

    sget v3, Lcom/google/android/apps/translate/R$string;->annotation_rencently_used:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->RECENTLY_USED:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    .line 442
    new-instance v0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    const-string v1, "SELECT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->SELECT:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    .line 439
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    sget-object v1, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->NORMAL:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->RECENTLY_USED:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->SELECT:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->$VALUES:[Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "priority"
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 447
    iput p3, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->priority:I

    .line 448
    iput p4, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->resourceId:I

    .line 449
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;
    .registers 2
    .parameter "name"

    .prologue
    .line 439
    const-class v0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;
    .registers 1

    .prologue
    .line 439
    sget-object v0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->$VALUES:[Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .registers 2

    .prologue
    .line 450
    iget v0, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->priority:I

    return v0
.end method

.method public getResourceId()I
    .registers 2

    .prologue
    .line 451
    iget v0, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->resourceId:I

    return v0
.end method
