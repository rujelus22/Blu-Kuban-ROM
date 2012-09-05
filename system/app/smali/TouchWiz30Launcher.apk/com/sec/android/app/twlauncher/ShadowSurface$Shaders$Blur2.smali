.class Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur2;
.super Lcom/sec/android/app/twlauncher/ShaderProgram;
.source "ShadowSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Blur2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur2;->this$0:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "precision mediump float;\nvarying vec2 vTex;\nuniform sampler2D surface;\nuniform vec4 uColor;\nvoid main() {\n  float j = 1./64.;\n  float u = vTex.x;\n  float v = vTex.y;\n  float a = (\n            texture2D(surface, vec2(u-3.*j,v)).a*.006+\n            texture2D(surface, vec2(u-2.*j,v)).a*.061+\n            texture2D(surface, vec2(u-1.*j,v)).a*.242+\n            texture2D(surface, vec2(u+0.*j,v)).a*.363+\n            texture2D(surface, vec2(u+1.*j,v)).a*.242+\n            texture2D(surface, vec2(u+2.*j,v)).a*.061+\n            texture2D(surface, vec2(u+3.*j,v)).a*.006+\n      0.);\n  gl_FragColor.a = a*uColor.a;\n  gl_FragColor.rgb = vec3(0.,0.,0.);\n}\n"

    return-object v0
.end method
