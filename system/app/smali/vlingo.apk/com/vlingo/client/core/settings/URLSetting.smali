.class public abstract Lcom/vlingo/client/core/settings/URLSetting;
.super Lcom/vlingo/client/core/settings/StringSetting;
.source "URLSetting.java"


# instance fields
.field url:Lcom/vlingo/client/core/http/URL;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "defaultValue"
    .parameter "description"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/vlingo/client/core/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/settings/URLSetting;->url:Lcom/vlingo/client/core/http/URL;

    .line 20
    return-void
.end method

.method private updateDetails()V
    .registers 3

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/URLSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/URLSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 24
    new-instance v0, Lcom/vlingo/client/core/http/URL;

    invoke-virtual {p0}, Lcom/vlingo/client/core/settings/URLSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/http/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/core/settings/URLSetting;->url:Lcom/vlingo/client/core/http/URL;

    .line 25
    :cond_1b
    return-void
.end method


# virtual methods
.method public getURL()Lcom/vlingo/client/core/http/URL;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/core/settings/URLSetting;->url:Lcom/vlingo/client/core/http/URL;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/vlingo/client/core/settings/URLSetting;->updateDetails()V

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/vlingo/client/core/settings/URLSetting;->url:Lcom/vlingo/client/core/http/URL;

    return-object v0
.end method

.method public setValue(Lcom/vlingo/client/core/http/URL;)V
    .registers 3
    .parameter "details"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vlingo/client/core/settings/URLSetting;->url:Lcom/vlingo/client/core/http/URL;

    .line 34
    invoke-virtual {p1}, Lcom/vlingo/client/core/http/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/vlingo/client/core/settings/StringSetting;->setValueInternal(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
