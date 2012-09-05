.class Lcom/sprint/dsa/SzSettings$SettingGroup;
.super Ljava/lang/Object;
.source "SzSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/SzSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingGroup"
.end annotation


# instance fields
.field private m_settingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/SzSettings$Setting;",
            ">;"
        }
    .end annotation
.end field

.field private m_tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprint/dsa/SzSettings;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/SzSettings;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "tag"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sprint/dsa/SzSettings$SettingGroup;->this$0:Lcom/sprint/dsa/SzSettings;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/SzSettings$SettingGroup;->m_settingList:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/sprint/dsa/SzSettings$SettingGroup;->m_tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/SzSettings$SettingGroup;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings$SettingGroup;->m_settingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/SzSettings$SettingGroup;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings$SettingGroup;->m_tag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAllSettings()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/SzSettings$Setting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings$SettingGroup;->m_settingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings$SettingGroup;->m_tag:Ljava/lang/String;

    return-object v0
.end method
