.class Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;
.super Ljava/lang/Object;
.source "Ui3dDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityDetails"
.end annotation


# instance fields
.field public mDisplayCity:Ljava/lang/String;

.field public mDisplayCountry:Ljava/lang/String;

.field public mGMT:Ljava/lang/String;

.field public mbIsImageInitialized:Z

.field public mbIsInUi3dDb:Ljava/lang/Boolean;

.field public mbIsSelected:Z

.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;


# direct methods
.method private constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1161
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    .line 1163
    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCountry:Ljava/lang/String;

    .line 1164
    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 1165
    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsInUi3dDb:Ljava/lang/Boolean;

    .line 1166
    iput-boolean v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 1167
    iput-boolean v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1161
    invoke-direct {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    return-void
.end method
