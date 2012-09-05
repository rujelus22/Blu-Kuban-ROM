.class public Lcom/google/android/apps/plus/phone/PlacesAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "PlacesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/PlacesAdapter$LocationQuery;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 44
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 68
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 69
    .local v1, iconView:Landroid/widget/ImageView;
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 70
    .local v3, nameView:Landroid/widget/TextView;
    const v4, 0x1020005

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, addressView:Landroid/widget/TextView;
    invoke-virtual {p0, p3}, Lcom/google/android/apps/plus/phone/PlacesAdapter;->getLocation(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    .line 72
    .local v2, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    if-eqz v2, :cond_3f

    .line 73
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 74
    const v4, 0x7f0200dd

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_34
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_3f
    return-void

    .line 76
    :cond_40
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 77
    const v4, 0x7f0200d4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    const v4, 0x7f07014a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_34

    .line 80
    :cond_53
    const v4, 0x7f0200d3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    const v4, 0x7f07014b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_34
.end method

.method public getLocation(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 51
    .local v1, locationBytes:[B
    if-eqz v1, :cond_c

    .line 53
    :try_start_8
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    .line 59
    :cond_c
    :goto_c
    return-object v2

    .line 54
    :catch_d
    move-exception v0

    .line 55
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_c
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
