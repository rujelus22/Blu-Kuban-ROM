.class Lcom/swype/android/widget/NavigationBar$TouchListener;
.super Ljava/lang/Object;
.source "NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/widget/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# static fields
.field private static final AUTO_REPEAT_INTERVAL:I = 0x96

.field private static final HOLD_INTERVAL:I = 0x2ee


# instance fields
.field private isRepeating:Z

.field final synthetic this$0:Lcom/swype/android/widget/NavigationBar;

.field private vkc:I


# direct methods
.method public constructor <init>(Lcom/swype/android/widget/NavigationBar;I)V
    .registers 3
    .parameter
    .parameter "vkc"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->this$0:Lcom/swype/android/widget/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p2, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->vkc:I

    .line 115
    return-void
.end method

.method private performClick()V
    .registers 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->this$0:Lcom/swype/android/widget/NavigationBar;

    iget-object v0, v0, Lcom/swype/android/widget/NavigationBar;->inputMethod:Lcom/swype/android/inputmethod/SwypeInputMethod;

    iget v1, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->vkc:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->propagateVkcToCore(IZ)V

    .line 155
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    .line 143
    :goto_8
    :pswitch_8
    return v3

    .line 122
    :pswitch_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 124
    iget-object v1, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->this$0:Lcom/swype/android/widget/NavigationBar;

    iget-object v1, v1, Lcom/swype/android/widget/NavigationBar;->glowCanvas:Lcom/swype/android/widget/NavigationBar$GlowCanvas;

    invoke-virtual {v1, v0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->addGlow(Landroid/graphics/Rect;)V

    .line 125
    iput-boolean v3, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->isRepeating:Z

    .line 126
    iget-object v0, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->this$0:Lcom/swype/android/widget/NavigationBar;

    iget-object v0, v0, Lcom/swype/android/widget/NavigationBar;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 132
    :pswitch_24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 134
    iget-object v1, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->this$0:Lcom/swype/android/widget/NavigationBar;

    iget-object v1, v1, Lcom/swype/android/widget/NavigationBar;->glowCanvas:Lcom/swype/android/widget/NavigationBar$GlowCanvas;

    invoke-virtual {v1, v0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->removeGlow(Landroid/graphics/Rect;)V

    .line 135
    iget-boolean v0, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->isRepeating:Z

    if-nez v0, :cond_3a

    .line 136
    invoke-direct {p0}, Lcom/swype/android/widget/NavigationBar$TouchListener;->performClick()V

    .line 138
    :cond_3a
    iget-object v0, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->this$0:Lcom/swype/android/widget/NavigationBar;

    iget-object v0, v0, Lcom/swype/android/widget/NavigationBar;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iput-boolean v3, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->isRepeating:Z

    goto :goto_8

    .line 119
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_9
        :pswitch_24
        :pswitch_8
        :pswitch_24
    .end packed-switch
.end method

.method public run()V
    .registers 4

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->isRepeating:Z

    .line 149
    invoke-direct {p0}, Lcom/swype/android/widget/NavigationBar$TouchListener;->performClick()V

    .line 150
    iget-object v0, p0, Lcom/swype/android/widget/NavigationBar$TouchListener;->this$0:Lcom/swype/android/widget/NavigationBar;

    iget-object v0, v0, Lcom/swype/android/widget/NavigationBar;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    return-void
.end method
