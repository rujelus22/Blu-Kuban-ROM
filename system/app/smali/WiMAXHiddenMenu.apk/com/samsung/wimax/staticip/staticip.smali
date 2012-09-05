.class public Lcom/samsung/wimax/staticip/staticip;
.super Landroid/app/Activity;
.source "staticip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Static IP MSG"


# instance fields
.field private et_array:[Landroid/widget/EditText;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private saved:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wimax/staticip/staticip;->saved:Z

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->et_array:[Landroid/widget/EditText;

    return-void
.end method

.method private validateAddress(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    .line 169
    const-string v0, "(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    .line 170
    .local v0, _255:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^(?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\.){3}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 171
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .parameter "v"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v2, 0x5

    const/16 v12, 0x1388

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_108

    .line 139
    :cond_d
    :goto_d
    return-void

    .line 51
    :pswitch_e
    new-array v11, v2, [Ljava/lang/String;

    .line 52
    .local v11, str_address:[Ljava/lang/String;
    const/4 v9, 0x1

    .line 54
    .local v9, isValid:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_12
    if-ge v8, v2, :cond_3d

    .line 55
    iget-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->et_array:[Landroid/widget/EditText;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v8

    .line 58
    aget-object v0, v11, v8

    if-eqz v0, :cond_30

    aget-object v0, v11, v8

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 59
    :cond_30
    if-eq v8, v5, :cond_6e

    .line 60
    const v0, 0x7f050065

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    const/4 v9, 0x0

    .line 78
    :cond_3d
    :goto_3d
    if-eqz v9, :cond_d

    .line 80
    iget-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    aget-object v1, v11, v3

    aget-object v2, v11, v13

    const/4 v3, 0x2

    aget-object v3, v11, v3

    const/4 v4, 0x3

    aget-object v4, v11, v4

    aget-object v5, v11, v5

    invoke-virtual/range {v0 .. v5}, Landroid/net/fourG/wimax/Wimax4GManager;->saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 82
    .local v6, check:I
    packed-switch v6, :pswitch_data_112

    .line 94
    :pswitch_54
    const v0, 0x7f05006d

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 67
    .end local v6           #check:I
    :cond_5f
    aget-object v0, v11, v8

    invoke-direct {p0, v0}, Lcom/samsung/wimax/staticip/staticip;->validateAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 68
    const-string v0, "Static IP MSG"

    const-string v1, "m.matches() address true !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_6e
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 71
    :cond_71
    const v0, 0x7f050066

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    const/4 v9, 0x0

    .line 73
    goto :goto_3d

    .line 84
    .restart local v6       #check:I
    :pswitch_7d
    const v0, 0x7f050067

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    iput-boolean v13, p0, Lcom/samsung/wimax/staticip/staticip;->saved:Z

    goto :goto_d

    .line 88
    :pswitch_8a
    const v0, 0x7f050069

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 91
    :pswitch_96
    const v0, 0x7f05006a

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 104
    .end local v6           #check:I
    .end local v8           #i:I
    .end local v9           #isValid:Z
    .end local v11           #str_address:[Ljava/lang/String;
    :pswitch_a2
    iget-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->deleteStaticIP()I

    move-result v7

    .line 106
    .local v7, deletevalue:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_a9
    if-ge v8, v2, :cond_b7

    .line 107
    iget-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->et_array:[Landroid/widget/EditText;

    aget-object v0, v0, v8

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    add-int/lit8 v8, v8, 0x1

    goto :goto_a9

    .line 110
    :cond_b7
    if-ne v7, v13, :cond_c3

    .line 111
    const v0, 0x7f050068

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    :cond_c3
    const-string v0, "Static IP MSG"

    const-string v1, "cleared wimax_ip.txt file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 119
    .end local v7           #deletevalue:I
    .end local v8           #i:I
    :pswitch_cc
    const/4 v10, 0x0

    .line 121
    .local v10, str:Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_ce
    if-ge v8, v2, :cond_d

    .line 122
    iget-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->readStaticIP(I)Ljava/lang/String;

    move-result-object v10

    .line 123
    iget-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->et_array:[Landroid/widget/EditText;

    aget-object v0, v0, v8

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    if-nez v8, :cond_105

    .line 126
    if-eqz v10, :cond_e9

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 127
    :cond_e9
    const v0, 0x7f05006b

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 130
    :cond_f5
    const-string v0, "no file error"

    if-ne v10, v0, :cond_105

    .line 131
    const v0, 0x7f05006c

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 121
    :cond_105
    add-int/lit8 v8, v8, 0x1

    goto :goto_ce

    .line 48
    :pswitch_data_108
    .packed-switch 0x7f080106
        :pswitch_a2
        :pswitch_e
        :pswitch_cc
    .end packed-switch

    .line 82
    :pswitch_data_112
    .packed-switch -0x2
        :pswitch_96
        :pswitch_8a
        :pswitch_54
        :pswitch_7d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/staticip/staticip;->setContentView(I)V

    .line 32
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 34
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/staticip/staticip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/staticip/staticip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/staticip/staticip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v1, p0, Lcom/samsung/wimax/staticip/staticip;->et_array:[Landroid/widget/EditText;

    const/4 v2, 0x0

    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/staticip/staticip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 39
    iget-object v1, p0, Lcom/samsung/wimax/staticip/staticip;->et_array:[Landroid/widget/EditText;

    const/4 v2, 0x1

    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/staticip/staticip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 40
    iget-object v1, p0, Lcom/samsung/wimax/staticip/staticip;->et_array:[Landroid/widget/EditText;

    const/4 v2, 0x2

    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/staticip/staticip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 41
    iget-object v1, p0, Lcom/samsung/wimax/staticip/staticip;->et_array:[Landroid/widget/EditText;

    const/4 v2, 0x3

    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/staticip/staticip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 42
    iget-object v1, p0, Lcom/samsung/wimax/staticip/staticip;->et_array:[Landroid/widget/EditText;

    const/4 v2, 0x4

    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/staticip/staticip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/samsung/wimax/staticip/staticip;->saved:Z

    if-eqz v0, :cond_1e

    .line 157
    iget-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 159
    iget-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 160
    const v0, 0x7f05006f

    const/16 v1, 0x1388

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    :cond_1e
    :goto_1e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 166
    return-void

    .line 163
    :cond_22
    const-string v0, "Static IP MSG"

    const-string v1, "WiMAX is not yet off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v0

    if-nez v0, :cond_24

    .line 145
    const-string v0, "Static IP MSG"

    const-string v1, "WiMAX modem is OFF, need to turn on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/samsung/wimax/staticip/staticip;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 148
    const v0, 0x7f05006e

    const/16 v1, 0x1388

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    :cond_24
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 152
    return-void
.end method
