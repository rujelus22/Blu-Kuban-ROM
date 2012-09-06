.class public Lcom/google/android/apps/plus/oob/ImageFieldLayout;
.super Lcom/google/android/apps/plus/oob/BaseFieldLayout;
.source "ImageFieldLayout.java"


# static fields
.field private static final IMAGE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/oob/ImageFieldLayout;->IMAGE_MAP:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/google/android/apps/plus/oob/ImageFieldLayout;->IMAGE_MAP:Ljava/util/Map;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    const v2, 0x7f02020a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V
    .registers 7
    .parameter "field"
    .parameter "id"
    .parameter "actionCallback"

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/ImageFieldLayout;->getInputView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .local v0, labelView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/ImageFieldLayout;->getServerImageType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    move-result-object v1

    .line 69
    .local v1, type:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    sget-object v2, Lcom/google/android/apps/plus/oob/ImageFieldLayout;->IMAGE_MAP:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 70
    sget-object v2, Lcom/google/android/apps/plus/oob/ImageFieldLayout;->IMAGE_MAP:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    :cond_24
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public newFieldFromInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
